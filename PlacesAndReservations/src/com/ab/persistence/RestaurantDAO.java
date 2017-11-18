package com.ab.persistence;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.ab.dataSource.CustomDataSource;
import com.ab.dto.RestaurantRegistrationDTO;
import com.ab.model.Restaurant;
import com.ab.model.User;

public class RestaurantDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	
	public class RestaurantMapper implements RowMapper<Restaurant>
    {
    	public Restaurant mapRow(ResultSet rs, int rowNum) throws SQLException {
    		
    		Restaurant r = new Restaurant();
    		
    		r.setId(rs.getInt("RESTAURANT_ID"));
    		r.setNume(rs.getString("NUME"));
    		r.setLocalitate(rs.getString("ORAS"));
    		r.setJudet(rs.getString("JUDET"));
    		r.setTara(rs.getString("TARA"));
    		r.setDescriere(rs.getString("DESCRIERE"));
    		r.setTelefon(rs.getString("TELEFON"));
    		r.setNumar(rs.getString("NR"));
    		r.setEmail(rs.getString("EMAIL"));
    		r.setStrada(rs.getString("STRADA"));
    			
    		return r;
		}
    }
	
/*	SELECT `restaurant`.`RESTAURANT_ID`,
    `restaurant`.`IMAGINE`,
    `restaurant`.`NUME`,
    `restaurant`.`ORAS`,
    `restaurant`.`STRADA`,
    `restaurant`.`NR`,
    `restaurant`.`JUDET`,
    `restaurant`.`TARA`,
    `restaurant`.`DESCRIERE`,
    `restaurant`.`TELEFON`,
    `restaurant`.`EMAIL`*/
	
	
	
	
	
    public List<Restaurant> getAllRestaurants() throws SQLException{
    	jdbcTemplate = CustomDataSource.getJdbcTemplate();
    	
    	String sql = "select * from RESTAURANT";
    	List<Restaurant> restaurants = jdbcTemplate.query(sql, new RestaurantMapper()); 
    	    	CustomDataSource.closeConnection(jdbcTemplate);

    	return restaurants;
    }
    
    
    public void insertRestaurant(RestaurantRegistrationDTO r) throws SQLException{
    	String sql = "INSERT INTO RESTAURANT(NUME,ORAS,STRADA,NR,JUDET,TARA,DESCRIERE,TELEFON,EMAIL)"
    			+ "VALUES(?,?,?,?,?,?,?,?,?)";
    	jdbcTemplate = CustomDataSource.getJdbcTemplate();
    	jdbcTemplate.update(sql, new Object[]{r.getNume(),r.getLocalitate(),r.getStrada(),r.getNumar(),r.getJudet(),r.getTara(),
    						r.getDescriere(),r.getTelefon(),r.getEmail()});
    	CustomDataSource.closeConnection(jdbcTemplate);
    }
    
    
    public Restaurant getRestaurant(long id){
    	
    	jdbcTemplate = CustomDataSource.getJdbcTemplate();
    	String sql = "SELECT * FROM RESTAURANT WHERE RESTAURANT_ID=?";
    	List<Restaurant> restaurant = jdbcTemplate.query(sql,new Object[]{id},new RestaurantMapper());
    	
    	return restaurant.get(0);
    }
	
}
