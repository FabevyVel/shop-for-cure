package com.cts.dao;

import com.cts.model.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

public class MemberDaoImpl implements MemberDao {

    @Autowired
    DataSource datasource;
    @Autowired
    JdbcTemplate jdbcTemplate;


    @Override
    public Member authenticateMember(Member member) {
        String sql = "select * from members where " +
                "username='" + member.getUserName() + "' and password='" + member.getPassword() + "'";

        List<Member> memberList = jdbcTemplate.query(sql, new MemberMapper());

        return memberList.size() > 0 ? memberList.get(0) : null;
    }
}
