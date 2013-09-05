package com.assetmanager.core.json;

import com.assetmanager.model.asset.def.MaterialType;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;

import java.io.IOException;

public class MaterialTypeSerializer extends JsonSerializer<MaterialType>
{
    @Override
    public void serialize(MaterialType materialType, JsonGenerator jsonGenerator,
                          SerializerProvider serializerProvider) throws IOException, JsonProcessingException
    {
        jsonGenerator.writeStartObject();
        jsonGenerator.writeFieldName("name");
        jsonGenerator.writeString(materialType.name());
        jsonGenerator.writeEndObject();
    }
}
