package za.co.entelect.bootcamp.orm.hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;
import za.co.entelect.bootcamp.orm.core.common.Page;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.gateway.exception.NotFoundException;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readpage.ReadIssuePageGateway;
import za.co.entelect.bootcamp.orm.core.usecases.issue.save.SaveIssueGateway;
import za.co.entelect.bootcamp.orm.hibernate.mappers.IssueMapper;
import za.co.entelect.bootcamp.orm.hibernate.models.IssueDataModel;

import java.util.List;

public class IssueHibernateGateway implements ReadOneIssueGateway, ReadIssuePageGateway, SaveIssueGateway {
    private SessionFactory sessionFactory;

    public IssueHibernateGateway() throws Exception {
        final StandardServiceRegistry registry =
                new StandardServiceRegistryBuilder()
                    .configure() // configures settings from hibernate.cfg.xml
                    .build();

        try {
            sessionFactory = new MetadataSources(registry)
                    .buildMetadata()
                    .buildSessionFactory();
        } catch (Exception e) {
            // The registry would be destroyed by the SessionFactory,
            // but being in this catch means we had trouble building the SessionFactory
            // so destroy it manually...
            StandardServiceRegistryBuilder.destroy( registry );
            throw e;
        }
    }

    @Override
    public Issue findById(Long id) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        IssueDataModel issueDataModel = session.get(IssueDataModel.class, id.intValue());

        if (issueDataModel == null) {
            throw new NotFoundException(Issue.class, id);
        }

        return IssueMapper.INSTANCE.toIssue(issueDataModel);
    }

    @Override
    public Page<Issue> findPage(int page, int pageSize) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        // Get the page data
        Query query = session.createQuery("from IssueDataModel");
        query.setFirstResult(page * pageSize);
        query.setMaxResults(pageSize);
        List<IssueDataModel> pageData = query.list();

        // Count the total records
        Query countQuery = session
                .createQuery("select count (i.id) from IssueDataModel i");
        Long countResult = (Long) countQuery.uniqueResult();

        return new Page<Issue>(
                IssueMapper.INSTANCE.toIssues(pageData),
                page,
                pageSize,
                countResult
        );
    }

    @Override
    public Issue save(Issue issue) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        IssueDataModel dataModel = IssueMapper.INSTANCE.toIssueDataModel(issue);
        session.saveOrUpdate(dataModel);
        session.getTransaction().commit();

        return IssueMapper.INSTANCE.toIssue(dataModel);
    }
}
