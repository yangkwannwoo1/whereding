package com.kh.whereding.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class ProductCollectionReview {

	private int reviewNo;
	private int csNo;
	private String rvContent;
	private String rvScore;
	private String createDate;
	private String userName;
	private String changeName;
	private String filePath;
}
