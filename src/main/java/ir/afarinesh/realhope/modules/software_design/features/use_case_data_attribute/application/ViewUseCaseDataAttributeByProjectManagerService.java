package ir.afarinesh.realhope.modules.software_design.features.use_case_data_attribute.application;

import ir.afarinesh.realhope.core.annotations.FeatureApplication;
import ir.afarinesh.realhope.core.usecase.*;
import ir.afarinesh.realhope.shares.repositories.UseCaseDataAttributeSpringJpaRepository;
import ir.afarinesh.realhope.entities.feature.UseCaseDataAttribute;
import ir.afarinesh.realhope.modules.software_design.features.use_case_data_attribute.application.ports.in.ViewUseCaseDataAttributeByProjectManagerUseCase;
import ir.afarinesh.realhope.modules.software_design.features.use_case_data_attribute.application.ports.in.ViewUseCaseDataAttributeByProjectManagerUseCase.*;
import ir.afarinesh.realhope.modules.software_design.features.use_case_data_attribute.domain.*;
import ir.afarinesh.realhope.shares.utilities.CalendarUtility;
import org.springframework.stereotype.Service;


@Service
public class ViewUseCaseDataAttributeByProjectManagerService {

    // jpa repositories
    final UseCaseDataAttributeSpringJpaRepository useCaseDataAttributeSpringJpaRepository;

    public ViewUseCaseDataAttributeByProjectManagerService(UseCaseDataAttributeSpringJpaRepository useCaseDataAttributeSpringJpaRepository) {
        this.useCaseDataAttributeSpringJpaRepository = useCaseDataAttributeSpringJpaRepository;
    }

    public UseCaseFruit<Fruit> cultivate(UseCasePlant<Plant> plant) throws CultivateException {
        UseCaseDataAttribute entity =
                this.useCaseDataAttributeSpringJpaRepository.findById(plant.getPlant().getId())
                .orElseThrow(() -> new CultivateException("Cannot find by id = " + plant.getPlant().getId()));
        return new UseCaseFruit<>(
            new Fruit(
                    this.mapUseCaseDataAttribute4ProjectManager(entity, plant.getLocale())
            ),
            true,
            ""
        );
    }

    public UseCaseFruitSeeds<FruitSeeds> prepare(UseCaseSeedsCommand<SeedsCommands> seedsCommand) throws PrepareException {
        return null;
    }


    public UseCaseDataAttribute4ProjectManager mapUseCaseDataAttribute4ProjectManager(UseCaseDataAttribute entity, String locale){
        return new UseCaseDataAttribute4ProjectManager(
                entity.getId(),
                entity.getUseCaseData().getUseCase().getName(),
                entity.getUseCaseData().getName(),
                entity.getName(),
                entity.getTitle(),
                entity.getFaTitle(),
                entity.getDescription(),
                (entity.getUseCaseUsageEnum() != null) ? entity.getUseCaseUsageEnum().title(locale) : null,
                (entity.getAttributeQuantity() != null) ? entity.getAttributeQuantity().title(locale) : null,
                (entity.getAttributeCategory() != null) ? entity.getAttributeCategory().title(locale) : null,
                (entity.getPrimitiveAttributeType() != null) ? entity.getPrimitiveAttributeType().title(locale) : null,
                entity.getSetterOfUpdatePath(),
                entity.getGetterOfUpdatePath(),
                (entity.getDomainEntityAttributeType() != null) ? entity.getDomainEntityAttributeType().title(locale) : null,
                (entity.getDataEntityAttributeType() != null) ? entity.getDataEntityAttributeType().title(locale) : null,
                (entity.getUseCaseData() != null) ? entity.getUseCaseData().title(locale) : null,
                (entity.getFruitSeedsAttribute() != null) ? entity.getFruitSeedsAttribute().title(locale) : null,
                (entity.getDataEnum() != null) ? entity.getDataEnum().title(locale) : null,
                entity.getNullable(),
                entity.getRequired(),
                entity.getMinLength(),
                entity.getMaxLength(),
                entity.getMin(),
                entity.getMax(),
                entity.getErrorTip()
        );
    }
}