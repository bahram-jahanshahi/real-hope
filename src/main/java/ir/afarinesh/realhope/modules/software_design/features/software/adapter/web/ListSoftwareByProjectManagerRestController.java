package ir.afarinesh.realhope.modules.software_design.features.software.adapter.web;

import ir.afarinesh.realhope.core.usecase.*;
import org.springframework.web.bind.annotation.*;
import ir.afarinesh.realhope.modules.software_design.features.software.application.ports.in.ListSoftwareByProjectManagerUseCase;
import ir.afarinesh.realhope.modules.software_design.features.software.application.ports.in.ListSoftwareByProjectManagerUseCase.*;

@RestController
@RequestMapping("/app/admin/project-manager/software/list-software-by-project-manager")
public class ListSoftwareByProjectManagerRestController{

	final ListSoftwareByProjectManagerUseCase useCase; 

	public ListSoftwareByProjectManagerRestController(ListSoftwareByProjectManagerUseCase useCase) {
		this.useCase = useCase;
	}

	@PostMapping("/cultivate")
	public UseCaseFruit<Fruit> cultivate(@RequestBody UseCasePlant<Plant> plant) {
		try {
			return useCase.cultivate(plant);
		} catch (CultivateException e) {
			return new UseCaseFruit<>(null, false, e.getMessage());
		}
	}

	@PostMapping("/prepare")
	public UseCaseFruitSeeds<FruitSeeds> prepare(@RequestBody UseCaseSeedsCommand<SeedsCommands> seedsCommand) {
		try {
			return useCase.prepare(seedsCommand);
		} catch (PrepareException e) {
			return new UseCaseFruitSeeds<>(null, false, e.getMessage());
		}
	}
}