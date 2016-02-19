package ${package}.config;

import ${package}.utils.ColumnReplacingDataSetLoader;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by gnco on 17/02/2016.
 */

@Configuration
public class ApplicationTestConfig {

    @Bean(name = "dataSetLoader")
    public ColumnReplacingDataSetLoader dataSetLoader(){
        return new ColumnReplacingDataSetLoader();
    }
}
