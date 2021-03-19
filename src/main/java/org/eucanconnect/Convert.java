package org.eucanconnect;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.yaml.YAMLFactory;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.TemplateException;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Convert {
  public static void main(String[] args) throws IOException, TemplateException {

    List<String> files = List.of("variables.yaml", "mappings.yaml");
    String output = "../../../../../output";
    ObjectMapper mapper = new ObjectMapper(new YAMLFactory());

    // to file
    PrintWriter outfile = new PrintWriter("documentation.html");

    // parse
    List<Module> modules = new ArrayList<>();
    for (String file : files) {
      // read yaml
      System.out.println(new File(file).getAbsoluteFile());
      modules.add(mapper.readValue(new File(file), Module.class));
    }

    // execute
    Configuration cfg = new Configuration();
    cfg.setObjectWrapper(new DefaultObjectWrapper());
    cfg.setClassForTemplateLoading(Convert.class, "");
    cfg.getTemplate("documentation.ftl").process(Map.of("modules", modules), outfile);

    outfile.close();
  }
}
