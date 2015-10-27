package com.auto.activiti.listener;

import org.activiti.engine.RepositoryService;
import org.activiti.engine.delegate.DelegateTask;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.Mvcs;

/**为usertask添加Category属性
 * Created by wizzer on 2015/5/18.
 */
public class TaskCategoryTaskListener extends DefaultTaskListener {
    private final Log log = Logs.get();
    @Override
    public void onCreate(DelegateTask delegateTask) throws Exception {
        RepositoryService repositoryService=delegateTask.getExecution().getEngineServices().getRepositoryService();
        String category=repositoryService.getProcessDefinition(delegateTask.getProcessDefinitionId()).getCategory();
        delegateTask.setCategory(category);
    }
}
