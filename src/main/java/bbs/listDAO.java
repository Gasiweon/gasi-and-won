package bbs;
getSearch(String searchField, String searchText){//특정한 리스트를 받아서 반환
    ArrayList<Bbs> list = new ArrayList<Bbs>();
    String SQL ="select * from bbs WHERE "+searchField.trim();
    try {
          if(searchText != null && !searchText.equals("") ){//이거 빼면 안 나온다ㅜ 왜지?
              SQL +=" LIKE '%"+searchText.trim()+"%' order by bbsID desc limit 10";
          }
          PreparedStatement pstmt=conn.prepareStatement(SQL);
			rs=pstmt.executeQuery();//select
       while(rs.next()) {
          Bbs bbs = new Bbs();
          bbs.setBbsID(rs.getInt(1));
          bbs.setBbsTitle(rs.getString(2));
          bbs.setUserID(rs.getString(3));
          bbs.setBbsDate(rs.getString(4));
          bbs.setBbsContent(rs.getString(5));
          bbs.setBbsAvailable(rs.getInt(6));
          bbs.setBbsCount(rs.getInt(7));
          bbs.setLikeCount(rs.getInt(8));
          list.add(bbs);//list에 해당 인스턴스를 담는다.
       }         
    } catch(Exception e) {
       e.printStackTrace();
    }
    return list;//ㄱㅔ시글 리스트 반환
 }
