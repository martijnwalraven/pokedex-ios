//  This file was automatically generated and should not be edited.

import Apollo

public final class CreatePokemonMutation: GraphQLMutation {
  public static let operationDefinition =
    "mutation CreatePokemon($name: String!, $url: String!, $trainerId: ID) {" +
    "  createPokemon(name: $name, url: $url, trainerId: $trainerId) {" +
    "    __typename" +
    "    ...PokemonDetails" +
    "    trainer {" +
    "      __typename" +
    "      id" +
    "      ownedPokemons {" +
    "        __typename" +
    "        id" +
    "      }" +
    "    }" +
    "  }" +
    "}"
  public static let queryDocument = operationDefinition.appending(PokemonDetails.fragmentDefinition)

  public let name: String
  public let url: String
  public let trainerId: GraphQLID?

  public init(name: String, url: String, trainerId: GraphQLID? = nil) {
    self.name = name
    self.url = url
    self.trainerId = trainerId
  }

  public var variables: GraphQLMap? {
    return ["name": name, "url": url, "trainerId": trainerId]
  }

  public struct Data: GraphQLMappable {
    public let createPokemon: CreatePokemon?

    public init(reader: GraphQLResultReader) throws {
      createPokemon = try reader.optionalValue(for: Field(responseName: "createPokemon", arguments: ["name": reader.variables["name"], "url": reader.variables["url"], "trainerId": reader.variables["trainerId"]]))
    }

    public struct CreatePokemon: GraphQLMappable {
      public let __typename: String
      public let trainer: Trainer?

      public let fragments: Fragments

      public init(reader: GraphQLResultReader) throws {
        __typename = try reader.value(for: Field(responseName: "__typename"))
        trainer = try reader.optionalValue(for: Field(responseName: "trainer"))

        let pokemonDetails = try PokemonDetails(reader: reader)
        fragments = Fragments(pokemonDetails: pokemonDetails)
      }

      public struct Fragments {
        public let pokemonDetails: PokemonDetails
      }

      public struct Trainer: GraphQLMappable {
        public let __typename: String
        public let id: GraphQLID
        public let ownedPokemons: [OwnedPokemon]?

        public init(reader: GraphQLResultReader) throws {
          __typename = try reader.value(for: Field(responseName: "__typename"))
          id = try reader.value(for: Field(responseName: "id"))
          ownedPokemons = try reader.optionalList(for: Field(responseName: "ownedPokemons"))
        }

        public struct OwnedPokemon: GraphQLMappable {
          public let __typename: String
          public let id: GraphQLID

          public init(reader: GraphQLResultReader) throws {
            __typename = try reader.value(for: Field(responseName: "__typename"))
            id = try reader.value(for: Field(responseName: "id"))
          }
        }
      }
    }
  }
}

public final class TrainerQuery: GraphQLQuery {
  public static let operationDefinition =
    "query Trainer($name: String!) {" +
    "  Trainer(name: $name) {" +
    "    __typename" +
    "    id" +
    "    name" +
    "    ownedPokemons {" +
    "      __typename" +
    "      ...PokemonDetails" +
    "    }" +
    "  }" +
    "}"
  public static let queryDocument = operationDefinition.appending(PokemonDetails.fragmentDefinition)

  public let name: String

  public init(name: String) {
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["name": name]
  }

  public struct Data: GraphQLMappable {
    public let trainer: Trainer?

    public init(reader: GraphQLResultReader) throws {
      trainer = try reader.optionalValue(for: Field(responseName: "Trainer", arguments: ["name": reader.variables["name"]]))
    }

    public struct Trainer: GraphQLMappable {
      public let __typename: String
      public let id: GraphQLID
      public let name: String?
      public let ownedPokemons: [OwnedPokemon]?

      public init(reader: GraphQLResultReader) throws {
        __typename = try reader.value(for: Field(responseName: "__typename"))
        id = try reader.value(for: Field(responseName: "id"))
        name = try reader.optionalValue(for: Field(responseName: "name"))
        ownedPokemons = try reader.optionalList(for: Field(responseName: "ownedPokemons"))
      }

      public struct OwnedPokemon: GraphQLMappable {
        public let __typename: String

        public let fragments: Fragments

        public init(reader: GraphQLResultReader) throws {
          __typename = try reader.value(for: Field(responseName: "__typename"))

          let pokemonDetails = try PokemonDetails(reader: reader)
          fragments = Fragments(pokemonDetails: pokemonDetails)
        }

        public struct Fragments {
          public let pokemonDetails: PokemonDetails
        }
      }
    }
  }
}

public final class UpdatePokemonMutation: GraphQLMutation {
  public static let operationDefinition =
    "mutation UpdatePokemon($id: ID!, $name: String!, $url: String!) {" +
    "  updatePokemon(id: $id, name: $name, url: $url) {" +
    "    __typename" +
    "    ...PokemonDetails" +
    "  }" +
    "}"
  public static let queryDocument = operationDefinition.appending(PokemonDetails.fragmentDefinition)

  public let id: GraphQLID
  public let name: String
  public let url: String

  public init(id: GraphQLID, name: String, url: String) {
    self.id = id
    self.name = name
    self.url = url
  }

  public var variables: GraphQLMap? {
    return ["id": id, "name": name, "url": url]
  }

  public struct Data: GraphQLMappable {
    public let updatePokemon: UpdatePokemon?

    public init(reader: GraphQLResultReader) throws {
      updatePokemon = try reader.optionalValue(for: Field(responseName: "updatePokemon", arguments: ["id": reader.variables["id"], "name": reader.variables["name"], "url": reader.variables["url"]]))
    }

    public struct UpdatePokemon: GraphQLMappable {
      public let __typename: String

      public let fragments: Fragments

      public init(reader: GraphQLResultReader) throws {
        __typename = try reader.value(for: Field(responseName: "__typename"))

        let pokemonDetails = try PokemonDetails(reader: reader)
        fragments = Fragments(pokemonDetails: pokemonDetails)
      }

      public struct Fragments {
        public let pokemonDetails: PokemonDetails
      }
    }
  }
}

public final class DeletePokemonMutation: GraphQLMutation {
  public static let operationDefinition =
    "mutation DeletePokemon($id: ID!) {" +
    "  deletePokemon(id: $id) {" +
    "    __typename" +
    "    trainer {" +
    "      __typename" +
    "      id" +
    "      ownedPokemons {" +
    "        __typename" +
    "        id" +
    "      }" +
    "    }" +
    "  }" +
    "}"

  public let id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLMappable {
    public let deletePokemon: DeletePokemon?

    public init(reader: GraphQLResultReader) throws {
      deletePokemon = try reader.optionalValue(for: Field(responseName: "deletePokemon", arguments: ["id": reader.variables["id"]]))
    }

    public struct DeletePokemon: GraphQLMappable {
      public let __typename: String
      public let trainer: Trainer?

      public init(reader: GraphQLResultReader) throws {
        __typename = try reader.value(for: Field(responseName: "__typename"))
        trainer = try reader.optionalValue(for: Field(responseName: "trainer"))
      }

      public struct Trainer: GraphQLMappable {
        public let __typename: String
        public let id: GraphQLID
        public let ownedPokemons: [OwnedPokemon]?

        public init(reader: GraphQLResultReader) throws {
          __typename = try reader.value(for: Field(responseName: "__typename"))
          id = try reader.value(for: Field(responseName: "id"))
          ownedPokemons = try reader.optionalList(for: Field(responseName: "ownedPokemons"))
        }

        public struct OwnedPokemon: GraphQLMappable {
          public let __typename: String
          public let id: GraphQLID

          public init(reader: GraphQLResultReader) throws {
            __typename = try reader.value(for: Field(responseName: "__typename"))
            id = try reader.value(for: Field(responseName: "id"))
          }
        }
      }
    }
  }
}

public struct PokemonDetails: GraphQLNamedFragment {
  public static let fragmentDefinition =
    "fragment PokemonDetails on Pokemon {" +
    "  __typename" +
    "  id" +
    "  name" +
    "  url" +
    "}"

  public static let possibleTypes = ["Pokemon"]

  public let __typename: String
  public let id: GraphQLID
  public let name: String?
  public let url: String?

  public init(reader: GraphQLResultReader) throws {
    __typename = try reader.value(for: Field(responseName: "__typename"))
    id = try reader.value(for: Field(responseName: "id"))
    name = try reader.optionalValue(for: Field(responseName: "name"))
    url = try reader.optionalValue(for: Field(responseName: "url"))
  }
}