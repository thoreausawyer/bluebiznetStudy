
  package com.thoreausawyer.board.sample;
  
  import org.springframework.stereotype.Component;

import lombok.NoArgsConstructor;
import lombok.ToString;
  
  @NoArgsConstructor
 @Component // boot에서는 이것만 붙여도 자동으로 빈을 인식하지만 spring은 root-context에 설정을 해야한다.
 @ToString
 public class Restaurant {
	 
	  private final Chef chef;

	    public Restaurant(Chef chef) {
	        this.chef = chef;
	    }
	    
	    public Restaurant() {
	        this.chef = null; // 또는 다른 값을 설정할 수 있습니다.
	}
	 
  
  }
 