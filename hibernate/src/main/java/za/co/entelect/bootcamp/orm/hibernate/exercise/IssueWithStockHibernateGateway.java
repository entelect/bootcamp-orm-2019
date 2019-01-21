package za.co.entelect.bootcamp.orm.hibernate.exercise;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import za.co.entelect.bootcamp.orm.core.entities.Issue;
import za.co.entelect.bootcamp.orm.core.gateway.exception.NotFoundException;
import za.co.entelect.bootcamp.orm.core.usecases.issue.readone.ReadOneIssueGateway;
import za.co.entelect.bootcamp.orm.hibernate.exercise.mappers.IssueWithStockMapper;
import za.co.entelect.bootcamp.orm.hibernate.exercise.models.IssueWithStockDataModel;

public class IssueWithStockHibernateGateway implements ReadOneIssueGateway {
    private SessionFactory sessionFactory;

    public IssueWithStockHibernateGateway() throws Exception {
        final StandardServiceRegistry registry =
                new StandardServiceRegistryBuilder()
                    .configure("/exercise/hibernate.cfg.xml")
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
        IssueWithStockDataModel issueDataModel = session.get(IssueWithStockDataModel.class, id.intValue());

        if (issueDataModel == null) {
            throw new NotFoundException(Issue.class, id);
        }

        return IssueWithStockMapper.INSTANCE.toIssue(issueDataModel);
    }
}
