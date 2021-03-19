package org.eucanconnect;

public class Column {
  String name;
  Integer key;
  Boolean required;
  String refTable;
  String refJsTemplate;
  String description;
  String columnType;
  Boolean inherited;
  String refLink;
  String label;
  String mappedBy;
  Mapping molgenis;

  public Mapping getMolgenis() {
    return molgenis;
  }

  public void setMolgenis(Mapping molgenis) {
    this.molgenis = molgenis;
  }

  public String getMappedBy() {
    return mappedBy;
  }

  public void setMappedBy(String mappedBy) {
    this.mappedBy = mappedBy;
  }

  public String getLabel() {
    return label;
  }

  public void setLabel(String label) {
    this.label = label;
  }

  public Boolean getInherited() {
    return inherited;
  }

  public String getRefLink() {
    return refLink;
  }

  public void setRefLink(String refLink) {
    this.refLink = refLink;
  }

  public void setInherited(Boolean inherited) {
    this.inherited = inherited;
  }

  public String getColumnType() {
    return columnType;
  }

  public void setColumnType(String columnType) {
    this.columnType = columnType;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getRefJsTemplate() {
    return refJsTemplate;
  }

  public void setRefJsTemplate(String refJsTemplate) {
    this.refJsTemplate = refJsTemplate;
  }

  public String getRefTable() {
    return refTable;
  }

  public void setRefTable(String refTable) {
    this.refTable = refTable;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Mapping getMaelstrom() {
    return maelstrom;
  }

  public void setMaelstrom(Mapping maelstrom) {
    this.maelstrom = maelstrom;
  }

  Mapping maelstrom;

  public Integer getKey() {
    return key;
  }

  public void setKey(Integer key) {
    this.key = key;
  }

  public Boolean getRequired() {
    return required;
  }

  public void setRequired(Boolean required) {
    this.required = required;
  }
}
