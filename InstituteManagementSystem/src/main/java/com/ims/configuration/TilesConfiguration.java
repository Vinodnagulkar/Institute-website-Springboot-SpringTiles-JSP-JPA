package com.ims.configuration;

	import org.springframework.context.annotation.Bean;
	import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
	import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
	import org.springframework.web.servlet.view.tiles3.TilesView;

	@Configuration
	public class TilesConfiguration {

		@Bean
		public UrlBasedViewResolver tilesViewResolver() {
			UrlBasedViewResolver tilesViewResolver = new UrlBasedViewResolver();

			tilesViewResolver.setViewClass(TilesView.class);

			return tilesViewResolver;
		}

		@Bean
		public TilesConfigurer tilesConfigurer() {
			TilesConfigurer tilesConfigurer = new TilesConfigurer();

			String[] defs = {"WEB-INF/tiles.xml"};

			tilesConfigurer.setDefinitions(defs);

			return tilesConfigurer;
		}
	
	  @Bean 
	  public InternalResourceViewResolver jspViewResolver() 
	  {
	  InternalResourceViewResolver resolver= new InternalResourceViewResolver();
	  resolver.setPrefix("/WEB-INF/jsps/"); 
	  resolver.setSuffix(".jsp"); 
	  return resolver; 
	  }
	 

	}

