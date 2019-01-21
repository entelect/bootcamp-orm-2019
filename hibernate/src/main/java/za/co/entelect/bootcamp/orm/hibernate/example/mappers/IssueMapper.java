package za.co.entelect.bootcamp.orm.hibernate.example.mappers;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.hibernate.example.models.IssueDataModel;

import java.util.List;

@Mapper
public interface IssueMapper {
    IssueMapper INSTANCE = Mappers.getMapper(IssueMapper.class);

    Issue toIssue(IssueDataModel issueDataModel);
    IssueDataModel toIssueDataModel(Issue issue);

    List<Issue> toIssues(List<IssueDataModel> issueDataModels);
}
