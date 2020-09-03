package ir.afarinesh.realhope.entities.project;

import ir.afarinesh.realhope.core.domain.AbstractDataEntity;
import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString

@Entity
@Table
public class SoftwareApplicationPanel extends AbstractDataEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String faTitle;

    @Column(nullable = false)
    private String angularProjectPath;

    @Column(nullable = false)
    private String angularSrcPath;

    @JoinColumn(nullable = false)
    @ManyToOne
    private Software software;

    @Override
    public String title(String locale) {
        if (locale.equals("fa")) {
            return getFaTitle();
        }
        if (locale.equals("en")) {
            return getTitle();
        }
        return getName();
    }
}
