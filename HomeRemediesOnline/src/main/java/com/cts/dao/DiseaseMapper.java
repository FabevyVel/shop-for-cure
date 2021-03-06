package com.cts.dao;

import com.cts.model.Disease;
import com.cts.model.Member;
import com.cts.model.Remedy;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DiseaseMapper implements RowMapper<Disease> {
    @Override
    public Disease mapRow(ResultSet resultSet, int i) throws SQLException {
        Disease disease = new Disease();
        disease.setDiseaseId(resultSet.getInt(1));
        disease.setDiseaseName(resultSet.getString(2));
        disease.setDiseaseDescription(resultSet.getString(3));
        return disease;
    }
}
