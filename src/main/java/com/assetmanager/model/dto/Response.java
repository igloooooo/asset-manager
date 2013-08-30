package com.assetmanager.model.dto;

import org.codehaus.jackson.annotate.JsonAutoDetect;

import java.io.Serializable;

@JsonAutoDetect
public class Response implements Serializable
{
    private boolean state;
    private String description;

    public Response(boolean state, String description)
    {
        this.state = state;
        this.description = description;
    }

    public Response()
    {

    }

    public boolean isState()
    {
        return state;
    }

    public void setState(boolean state)
    {
        this.state = state;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription(String description)
    {
        this.description = description;
    }
}
