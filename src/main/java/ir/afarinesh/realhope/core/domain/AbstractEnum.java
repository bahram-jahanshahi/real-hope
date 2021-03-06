package ir.afarinesh.realhope.core.domain;

import java.util.List;

public interface AbstractEnum {

    String title(String locale);

    String fa();

    String en();

    SelectEnum getSelectEnum(String locale);

    List<SelectEnum> getSelectEnumList(String locale);

}
