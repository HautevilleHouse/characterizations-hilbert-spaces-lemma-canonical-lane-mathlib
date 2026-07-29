import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure InnerProductPackage where
  innerProduct : Type u
  norm : Type v
  completeness : Prop
  orthonormalBasis : Prop
  rieszRepresentation : Prop

def InnerProductClosed (P : InnerProductPackage) : Prop :=
  P.completeness ∧ P.orthonormalBasis ∧ P.rieszRepresentation

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse