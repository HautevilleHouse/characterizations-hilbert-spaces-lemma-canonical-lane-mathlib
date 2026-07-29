import CharacterizationsHilbertSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure HilbertEndgameState where
  object : HilbertSpaceObject

def projectionFun : HilbertEndgameState → HilbertEndgameState := id

theorem projection_idempotent (x : HilbertEndgameState) :
    projectionFun (projectionFun x) = projectionFun x := by
  rfl

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse