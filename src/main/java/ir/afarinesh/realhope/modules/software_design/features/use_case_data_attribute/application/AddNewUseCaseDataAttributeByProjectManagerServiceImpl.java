package ir.afarinesh.realhope.modules.software_design.features.use_case_data_attribute.application;
import ir.afarinesh.realhope.core.annotations.FeatureApplication;
import ir.afarinesh.realhope.entities.data_model.DataEntity;
import ir.afarinesh.realhope.entities.data_model.DataEnum;
import ir.afarinesh.realhope.entities.feature.DomainEntity;
import ir.afarinesh.realhope.entities.feature.UseCaseData;
import ir.afarinesh.realhope.entities.feature.UseCaseDataAttribute;
import ir.afarinesh.realhope.entities.feature.enums.EntityAttributeCategoryEnum;
import ir.afarinesh.realhope.entities.feature.enums.EntityAttributeQuantityEnum;
import ir.afarinesh.realhope.entities.feature.enums.PrimitiveAttributeTypeEnum;
import ir.afarinesh.realhope.entities.feature.enums.UseCaseUsageEnum;
import ir.afarinesh.realhope.modules.software_design.features.use_case_data_attribute.application.ports.in.AddNewUseCaseDataAttributeByProjectManagerUseCase;
import ir.afarinesh.realhope.core.usecase.*;
import ir.afarinesh.realhope.shares.repositories.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@FeatureApplication
public class AddNewUseCaseDataAttributeByProjectManagerServiceImpl implements AddNewUseCaseDataAttributeByProjectManagerUseCase {

    final AddNewUseCaseDataAttributeByProjectManagerService service;
    final DomainEntitySpringJpaRepository domainEntitySpringJpaRepository;
    final DataEntitySpringJpaRepository dataEntitySpringJpaRepository;
    final UseCaseDataSpringJpaRepository useCaseDataSpringJpaRepository;
    final UseCaseDataAttributeSpringJpaRepository useCaseDataAttributeSpringJpaRepository;
    final DataEnumSpringJpaRepository dataEnumSpringJpaRepository;

    public AddNewUseCaseDataAttributeByProjectManagerServiceImpl(AddNewUseCaseDataAttributeByProjectManagerService service,
                                                                 DomainEntitySpringJpaRepository domainEntitySpringJpaRepository,
                                                                 DataEntitySpringJpaRepository dataEntitySpringJpaRepository,
                                                                 UseCaseDataSpringJpaRepository useCaseDataSpringJpaRepository,
                                                                 UseCaseDataAttributeSpringJpaRepository useCaseDataAttributeSpringJpaRepository,
                                                                 DataEnumSpringJpaRepository dataEnumSpringJpaRepository) {
        this.service = service;
        this.domainEntitySpringJpaRepository = domainEntitySpringJpaRepository;
        this.dataEntitySpringJpaRepository = dataEntitySpringJpaRepository;
        this.useCaseDataSpringJpaRepository = useCaseDataSpringJpaRepository;
        this.useCaseDataAttributeSpringJpaRepository = useCaseDataAttributeSpringJpaRepository;
        this.dataEnumSpringJpaRepository = dataEnumSpringJpaRepository;
    }

    @Override
    @Transactional
    public UseCaseFruit<Fruit> cultivate(UseCasePlant<Plant> plant) throws CultivateException {
        DomainEntity domainEntityAttributeType = null;
        if (plant.getPlant().getDomainEntityAttributeType().getValue() != null) {
            domainEntityAttributeType = domainEntitySpringJpaRepository
                    .findById(plant.getPlant().getDomainEntityAttributeType().getValue())
                    .orElseThrow();
        }
        DataEntity dataEntityAttributeType = null;
        if (plant.getPlant().getDataEntityAttributeType().getValue() != null) {
            dataEntityAttributeType = dataEntitySpringJpaRepository
                    .findById(plant.getPlant().getDataEntityAttributeType().getValue())
                    .orElseThrow();
        }
        UseCaseData useCaseData = null;
        if (plant.getPlant().getUseCaseData().getValue() != null) {
            useCaseData = useCaseDataSpringJpaRepository
                    .findById(plant.getPlant().getUseCaseData().getValue())
                    .orElseThrow();
        }
        UseCaseDataAttribute fruitSeedsAttribute = null;
        if (plant.getPlant().getFruitSeedsAttribute().getValue() != null) {
            fruitSeedsAttribute = useCaseDataAttributeSpringJpaRepository
                    .findById(plant.getPlant().getUseCaseData().getValue())
                    .orElseThrow();
        }
        DataEnum dataEnum = null;
        if (plant.getPlant().getDataEnum().getValue() != null) {
            dataEnum = dataEnumSpringJpaRepository
                    .findById(plant.getPlant().getDataEnum().getValue())
                    .orElseThrow();
        }
        // Create
        UseCaseDataAttribute attribute = new UseCaseDataAttribute(
                null,
                plant.getPlant().getName().trim(),
                plant.getPlant().getTitle().trim(),
                plant.getPlant().getFaTitle().trim(),
                plant.getPlant().getDescription().trim(),
                plant.getPlant().getUiRow(),
                plant.getPlant().getUiColumn(),
                UseCaseUsageEnum.findByName(plant.getPlant().getUseCaseUsageEnumEnum().getValue()),
                EntityAttributeQuantityEnum.findByName(plant.getPlant().getAttributeQuantityEnum().getValue()),
                EntityAttributeCategoryEnum.findByName(plant.getPlant().getAttributeCategoryEnum().getValue()),
                PrimitiveAttributeTypeEnum.findByName(plant.getPlant().getAttributeCategoryEnum().getValue()),
                plant.getPlant().getSetterOfUpdatePath(),
                plant.getPlant().getGetterOfUpdatePath(),
                plant.getPlant().getNullable(),
                plant.getPlant().getRequired(),
                plant.getPlant().getMinLength(),
                plant.getPlant().getMaxLength(),
                plant.getPlant().getMin(),
                plant.getPlant().getMax(),
                plant.getPlant().getErrorTip(),
                domainEntityAttributeType,
                dataEntityAttributeType,
                useCaseData,
                fruitSeedsAttribute,
                dataEnum
        );
        // Save
        this.useCaseDataAttributeSpringJpaRepository.save(attribute);
        // Return fruit
        return new UseCaseFruit<>(
                new Fruit(true),
                true,
                ""
        );
    }

    @Override
    public UseCaseFruitSeeds<FruitSeeds> prepare(UseCaseSeedsCommand<SeedsCommands> seedsCommand) throws PrepareException {
        return this.service.prepare(seedsCommand);
    }
}
