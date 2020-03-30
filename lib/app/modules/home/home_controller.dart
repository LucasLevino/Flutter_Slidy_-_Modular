import 'package:mobx/mobx.dart';
import 'package:project_a/app/modules/home/models/pokemon_model.dart';
import 'package:project_a/app/modules/home/repositories/poke_repository.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PokeRepository repository;

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  _HomeControllerBase(this.repository) {
    fecthPokemons();
  }

  @action
  fecthPokemons(){
    pokemons = repository.getAllPokemons().asObservable();
  }
}