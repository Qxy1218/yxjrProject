package com.p2p.mapper;

import java.util.List;

import com.p2p.pojo.Text;

public interface TextMapper {
  List<Text> selectTextList();
  void updeteText(Text text);
  void deleteText(Integer id);
  void addText(Text text);
}
