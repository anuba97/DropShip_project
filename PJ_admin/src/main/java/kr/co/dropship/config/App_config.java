package kr.co.dropship.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class App_config {

	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		
		//dataSource 정보를 가져옴
		sessionFactory.setDataSource(dataSource);
		
		//Mapper.xml 정보를 가져옴 -> 1개는 그냥, 여러개는 배열로 받음
		Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:/mapper/**/*.xml");
		sessionFactory.setMapperLocations(res);
		
		return sessionFactory.getObject();
	}// sqlSessionFactory (DB연결하기)
	
	
	@Bean // 하나의 connection같은 역할을 함
	public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
		System.out.println("sqlSessionFactory : " + sqlSessionFactory);
		return new SqlSessionTemplate(sqlSessionFactory);
	}
	
}
