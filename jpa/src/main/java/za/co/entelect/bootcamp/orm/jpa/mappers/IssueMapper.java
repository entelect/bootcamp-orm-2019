package za.co.entelect.bootcamp.orm.jpa.mappers;

import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.factory.Mappers;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.jpa.models.IssueDataModel;

import java.util.List;

@Mapper
public interface IssueMapper {
    IssueMapper INSTANCE = Mappers.getMapper(IssueMapper.class);

    Issue toIssue(IssueDataModel issueDataModel);
    IssueDataModel toIssueDataModel(Issue issue);

    List<Issue> toIssues(List<IssueDataModel> issueDataModels);

    void updateDataModel(@MappingTarget IssueDataModel issueDataModel, Issue issue);
}
