package com.woone.goo.DAO;

import java.util.Date;

import com.woone.goo.DTO.PlanDto;

public interface PlanDao {
	public PlanDto plancheck(Date check_in);
	
}
