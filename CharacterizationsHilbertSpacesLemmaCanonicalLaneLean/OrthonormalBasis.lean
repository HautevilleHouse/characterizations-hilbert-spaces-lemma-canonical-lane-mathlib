import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure OrthonormalBasisPackage where
  hilbert : HilbertSpacePackage
  indexSet : Type u
  basisVectors : indexSet → hilbert.carrier
  orthonormal : Prop
  spanning : Prop
  orthonormalAxiom : orthonormal
  spanningAxiom : spanning

structure OrthonormalBasisEvidence (B : OrthonormalBasisPackage) where
  orthonormalClosed : B.orthonormal
  spanningClosed : B.spanning

def OrthonormalBasisClosed (B : OrthonormalBasisPackage) : Prop :=
  B.orthonormal ∧ B.spanning

theorem orthonormal_basis_closed_from_evidence (B : OrthonormalBasisPackage)
    (E : OrthonormalBasisEvidence B) : OrthonormalBasisClosed B := by
  exact And.intro E.orthonormalClosed E.spanningClosed

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse