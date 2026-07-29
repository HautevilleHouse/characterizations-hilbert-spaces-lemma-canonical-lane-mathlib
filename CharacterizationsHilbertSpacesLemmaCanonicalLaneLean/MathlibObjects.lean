import CharacterizationsHilbertSpacesLemmaCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure HilbertSpaceObject where
  carrier : Type
  innerProduct : Inner ℝ carrier
  complete : Prop
  parallelogramLaw : Prop
  conclusion : parallelogramLaw

def HilbertSpaceWitnessClosed (O : HilbertSpaceObject) : Prop :=
  O.parallelogramLaw

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse