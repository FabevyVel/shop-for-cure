package com.cts.dao;

import com.cts.model.Member;
import com.cts.model.Roles;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberMapper implements RowMapper<Member> {
    @Override
    public Member mapRow(ResultSet resultSet, int i) throws SQLException {
        Member member = new Member();
        member.setUserId(resultSet.getInt(1));
        member.setUserName(resultSet.getString(2));
        member.setPassword(resultSet.getString(3));
        if(resultSet.getString(4).equals("A")){
            member.setRoles(Roles.ADMIN);
        }else {
            member.setRoles(Roles.USER);
        }

        return member;
    }
}
