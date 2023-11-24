package test.util;
/*
 *  Data Base Connection Pool 의 약자 => Dbcp
 *  
 *  Bean => java 객체를 콩(bean) 이라고 부르기도 한다
 */

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DbcpBean {
	private Connection conn;
	
	public DbcpBean() {
		try {
			//Tomcat 서버가 관리하는 connection 객체를 하나 얻어와서 필드에 저장하는 작업하기
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			//Server/context.xml 문서에 설정된 jdbc/myoracle 이라는 이름의 datasource 를 얻어온다
			DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
			//얻어온 datasource 객체를 이용해서 connection 객체의 참조값을 얻어와서 필드에 저장
			conn = ds.getConnection();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public Connection getConn() {
		return conn;
	}
}
