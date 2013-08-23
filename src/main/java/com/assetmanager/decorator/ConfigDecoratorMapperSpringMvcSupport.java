package com.assetmanager.decorator;

import com.opensymphony.module.sitemesh.Config;
import com.opensymphony.module.sitemesh.Decorator;
import com.opensymphony.module.sitemesh.DecoratorMapper;
import com.opensymphony.module.sitemesh.Page;
import com.opensymphony.module.sitemesh.mapper.ConfigDecoratorMapper;
import com.opensymphony.module.sitemesh.mapper.ConfigLoader;
import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.util.Properties;

public class ConfigDecoratorMapperSpringMvcSupport extends ConfigDecoratorMapper
{

    private static final Logger LOG = Logger.getLogger(ConfigDecoratorMapperSpringMvcSupport.class);
    private ConfigLoader configLoader = null;

    /**
     * Create new ConfigLoader using '/WEB-INF/decorators.xml' file.
     */
    public void init(Config config, Properties properties, DecoratorMapper parent) throws InstantiationException
    {
        LOG.debug("init()...");
        super.init(config, properties, parent);
        try
        {
            String fileName = properties.getProperty("config", "/WEB-INF/decorators.xml");
            configLoader = new ConfigLoader(fileName, config);
        }
        catch (Exception e)
        {
            throw new InstantiationException(e.toString());
        }
    }

    /**
     * Retrieve {@link com.opensymphony.module.sitemesh.Decorator} based on 'pattern' tag.
     */
    public Decorator getDecorator(HttpServletRequest request, Page page)
    {
        LOG.debug("getDecorator()...");
        String thisPath = request.getServletPath();
        LOG.debug("\tThisPath: " + thisPath);
        String requestURI = request.getRequestURI();
        LOG.debug("\t\tGet request URI: " + requestURI);
        //TODO check indexes
        thisPath = requestURI.substring(request.getContextPath().length(), requestURI.length());
        // remove "/app"
        thisPath = thisPath.replaceAll("\\/app", "");
        LOG.debug("\t\t\tThisPath: " + thisPath);
        String name = null;
        try
        {
            name = configLoader.getMappedName(thisPath);
        }
        catch (ServletException e)
        {
            e.printStackTrace();
        }
        LOG.debug("\tResolved decorator name: " + name);
        Decorator result = getNamedDecorator(request, name);
        LOG.debug("Decorator is null ? " + (result == null));
        return result == null ? super.getDecorator(request, page) : result;
    }
}