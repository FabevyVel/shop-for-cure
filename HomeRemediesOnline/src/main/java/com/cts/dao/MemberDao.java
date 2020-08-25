package com.cts.dao;

import com.cts.model.Member;

public interface MemberDao {

    Member authenticateMember(Member member);
}
