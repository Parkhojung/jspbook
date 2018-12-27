package jspbook.ch10;

public class User {

		String name;
		int id;
		
		User(){
			name = "홍길동";
			id = 1;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}
		
}
