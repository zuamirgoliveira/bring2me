package br.com.bring2me.config;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import br.com.bring2me.dao.ItemDAO;
import br.com.bring2me.dao.LoginDAO;
import br.com.bring2me.dao.MaloteDAO;
import br.com.bring2me.dao.TramiteDAO;
import br.com.bring2me.dao.UsuarioDAO;
import br.com.bring2me.dao.impl.ItemDAOImpl;
import br.com.bring2me.dao.impl.LoginDAOImpl;
import br.com.bring2me.dao.impl.MaloteDAOImpl;
import br.com.bring2me.dao.impl.TramiteDAOImpl;
import br.com.bring2me.dao.impl.UsuarioDAOImpl;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages =  "br.com.bring2me")
public class SpringMvcConfig implements WebMvcConfigurer {
	
	@Bean
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost/bring2medb");
		dataSource.setUsername("root");
		dataSource.setPassword("root");
		
		return dataSource;
	}
	
	@Bean
	public ViewResolver getViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		
		return resolver;
	}
	
	@Bean
	public UsuarioDAO getUsuarioDAO() {
		return new UsuarioDAOImpl(getDataSource());
	}
	
	@Bean
	public ItemDAO getItemDAO() {
		return new ItemDAOImpl(getDataSource());
	}
	
	@Bean
	public MaloteDAO getMaloteDAO() {
		return new MaloteDAOImpl(getDataSource());
	}
	
	@Bean
	public TramiteDAO getTramiteDAO() {
		return new TramiteDAOImpl(getDataSource());
	}
	
	@Bean
	public LoginDAO getLoginDAO() {
		return new LoginDAOImpl(getDataSource());
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
}
