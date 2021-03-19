package org.eucanconnect;

import java.util.List;

public class Table {
  String name;
  String description;
  Mapping maelstrom;
  Mapping molgenis;

  public Mapping getMolgenis() {
    return molgenis;
  }

  public void setMolgenis(Mapping molgenis) {
    this.molgenis = molgenis;
  }

  String inherit;
  List<Column> columns;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Mapping getMaelstrom() {
    return maelstrom;
  }

  public void setMaelstrom(Mapping maelstrom) {
    this.maelstrom = maelstrom;
  }

  public String getInherit() {
    return inherit;
  }

  public void setInherit(String inherit) {
    this.inherit = inherit;
  }

  public List<Column> getColumns() {
    return columns;
  }

  public void setColumns(List<Column> columns) {
    this.columns = columns;
  }
}
