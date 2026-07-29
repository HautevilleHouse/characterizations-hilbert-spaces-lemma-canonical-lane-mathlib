import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure HilbertSpacePackage where
  carrier : Type u
  innerProduct : carrier → carrier → ℝ
  norm : carrier → ℝ
  completeness : Prop
  innerProductSesq : Prop
  normFromInnerProduct : Prop
  completenessAxiom : completeness

structure HilbertSpaceEvidence (H : HilbertSpacePackage) where
  innerProductSesqClosed : H.innerProductSesq
  normFromInnerProductClosed : H.normFromInnerProduct
  completenessClosed : H.completeness

def HilbertSpaceClosed (H : HilbertSpacePackage) : Prop :=
  H.innerProductSesq ∧ H.normFromInnerProduct ∧ H.completeness

theorem hilbert_space_closed_from_evidence (H : HilbertSpacePackage)
    (E : HilbertSpaceEvidence H) : HilbertSpaceClosed H := by
  exact And.intro E.innerProductSesqClosed (And.intro E.normFromInnerProductClosed E.completenessClosed)

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse