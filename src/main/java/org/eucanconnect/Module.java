package org.eucanconnect;

import java.util.List;

public class Module {
  public List<Table> getTables() {
    return tables;
  }

  public void setTables(List<Table> tables) {
    this.tables = tables;
  }

  List<Table> tables;
  String name;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }
}
