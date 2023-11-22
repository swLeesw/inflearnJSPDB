package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

//오라클 데이터 베이스에 연결하고  select, insert, update, delete작업을 실행해주는 클래스.
public class MemberDAO {

    //데이터 베이스에 접근할 수 있도록 도와주는 메소드
    String myid = "system";
    String mypass = "256032";
    String myurl = "jdbc:oracle:thin:@localhost:1521:XE";//접속 url(로컬호스트, 포트151, 오라클 버전)

    Connection con; //데이터 베이스에 접근할 수 있도록 설정
    PreparedStatement pstmt; //데이터 베이스에서 쿼리를 실행시켜주는 객체
    ResultSet rs; //데이터 베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체

    public void getCon() {
        try{
            //1.해당 데이터 베이스를 사용 한다고 선언(클래스를 등록 = 오라클을 사용)
            //Class.forName("oracle.jdbc.driver.OracleDriver");//ojdbc안의 패키지(jsp와 dv를연결해준다)
            Class.forName("oracle.jdbc.OracleDriver");//ojdbc안의 패키지(jsp와 dv를연결해준다)
            //2.해당 데이터 베이스에 접속
            con = DriverManager.getConnection(myurl, myid, mypass);
        }
        catch(Exception e) {
            e.printStackTrace();;
        }
    }

    //데이터 베이스에 한 사람의 회원 정보를 저장해주는 함수
    public void insertMember(MemberBean mbean) {
        try{
            getCon();
            //3.접속 후 쿼리준비하여 쿼리를 사용하도록 설정
            String sql="INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?,?)";//8개 넣기
            //3-1.쿼리를 사용하도록 설정
            pstmt = con.prepareStatement(sql);//jsp에서 쿼리를 사용하도록 설정
            //3-2.?에 맞게 데이터를 맵핑(?에 들어갈 말들)
            pstmt.setString(1, mbean.getId());//idx는 1번부터 시작
            pstmt.setString(2, mbean.getPw());
            pstmt.setString(3, mbean.getEmail());
            pstmt.setString(4, mbean.getTell());
            pstmt.setString(5, mbean.getHobby());
            pstmt.setString(6, mbean.getJob());
            pstmt.setString(7, mbean.getAge());
            pstmt.setString(8, mbean.getInfo());
            //4.오라클에서 쿼리를 실행하시오
            pstmt.executeUpdate();//insert, update, delete 시 사용하는 메소드
            //5.자원 반납
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    //모든 회원의 정보를 리턴해주는 메소드 호출
    public Vector<MemberBean> allSelectMember() {
        Vector<MemberBean> v = new Vector<>();
        try{
        //커넥션 연결
        getCon();
        //쿼리 준비(sql문)
        String sql = "SELECT * FROM MEMBER";
        //쿼리를 실행시켜주는 객체 선언
        pstmt = con.prepareStatement(sql);
        //쿼리를 실행 시킨 결과를 리턴해서 받아줌(오라클 테이블의 검색된 결과를 자바객체에 저장)
        rs = pstmt.executeQuery();
        //반복문을 사용해서rs(result set)에 저장된 데이터를 추출해놓아야 함
        while(rs.next()) {//저장된 데이터 만큼까지 반복문을 돌리겠다는 뜻
            MemberBean bean = new MemberBean();//컬럼으로 나눠진 데이터를 빈클래스에 저장
            bean.setId(rs.getString(1));
            bean.setPw(rs.getString(2));
            bean.setEmail(rs.getString(3));
            bean.setTell(rs.getString(4));
            bean.setHobby(rs.getString(5));
            bean.setJob(rs.getString(6));
            bean.setAge(rs.getString(7));
            bean.setInfo(rs.getString(8));
            v.add(bean);
        }
        con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public MemberBean selectMember(String id) {
        MemberBean mbean = new MemberBean();
        try{
            //연결
            getCon();
            //쿼리준비
            String sql = "SELECT * FROM MEMBER WHERE id = ?";
            //객체 선언
            pstmt = con.prepareStatement(sql);
            //?에 값을 맵핑
            pstmt.setString(1, id);//parameterIndex1번에 id를 삽입
            //쿼리문 실행
            rs = pstmt.executeQuery();
            if (rs.next()) {//레코드가 존재한다면
                mbean.setId(rs.getString(1));
                mbean.setPw(rs.getString(2));
                mbean.setEmail(rs.getString(3));
                mbean.setTell(rs.getString(4));
                mbean.setHobby(rs.getString(5));
                mbean.setJob(rs.getString(6));
                mbean.setAge(rs.getString(7));
                mbean.setInfo(rs.getString(8));
            }
            con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return mbean;
    }

    public void updateMember(MemberBean mbean) {
        try{
            getCon();
            String sql="UPDATE MEMBER SET email=?, tell=? WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, mbean.getEmail());
            pstmt.setString(2, mbean.getTell());
            pstmt.setString(3, mbean.getId());
            pstmt.executeUpdate();
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    public String getPass(String id) {
        String pw = "";
        try {
            getCon();
            String sql ="SELECT PW FROM MEMBER WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                pw = rs.getString(1);
            }
            con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return pw;
    }

    public void deleteMember(String id) {
        try {
            getCon();
            String sql="DELETE FROM MEMBER WHERE id=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
            con.close();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
    }

}
