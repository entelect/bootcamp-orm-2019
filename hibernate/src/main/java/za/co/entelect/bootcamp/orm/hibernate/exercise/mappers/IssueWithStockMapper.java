package za.co.entelect.bootcamp.orm.hibernate.exercise.mappers;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.hibernate.exercise.models.IssueWithStockDataModel;

import java.util.List;

@Mapper
public interface IssueWithStockMapper {
    IssueWithStockMapper INSTANCE = Mappers.getMapper(IssueWithStockMapper.class);

    Issue toIssue(IssueWithStockDataModel issueDataModel);
    IssueWithStockDataModel toIssueDataModel(Issue issue);

    List<Issue> toIssues(List<IssueWithStockDataModel> issueDataModels);
}
