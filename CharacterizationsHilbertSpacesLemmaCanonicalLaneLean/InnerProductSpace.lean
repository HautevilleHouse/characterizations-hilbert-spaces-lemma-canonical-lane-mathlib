import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure InnerProductSpacePackage where
  carrier : Type u
  scalarProduct : carrier → carrier → ℝ
  positiveDefinite : Prop
  symmetric : Prop
  bilinear : Prop
  positiveDefiniteProof : positiveDefinite
  symmetricProof : symmetric
  bilinearProof : bilinear

structure InnerProductSpaceEvidence (V : InnerProductSpacePackage) where
  positiveDefiniteClosed : V.positiveDefinite
  symmetricClosed : V.symmetric
  bilinearClosed : V.bilinear

def InnerProductSpaceClosed (V : InnerProductSpacePackage) : Prop :=
  V.positiveDefinite ∧ V.symmetric ∧ V.bilinear

theorem inner_product_space_closed_from_evidence (V : InnerProductSpacePackage)
    (E : InnerProductSpaceEvidence V) : InnerProductSpaceClosed V := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.symmetricClosed E.bilinearClosed)

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse