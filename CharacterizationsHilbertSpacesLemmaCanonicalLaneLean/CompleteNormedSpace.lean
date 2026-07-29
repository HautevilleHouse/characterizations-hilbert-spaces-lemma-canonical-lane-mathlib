import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure CompleteNormedSpacePackage where
  carrier : Type u
  norm : carrier → ℝ
  normedSpace : Prop
  completeMetric : Prop
  normedSpaceProof : normedSpace
  completeMetricProof : completeMetric

structure CompleteNormedSpaceEvidence (X : CompleteNormedSpacePackage) where
  normedSpaceClosed : X.normedSpace
  completeMetricClosed : X.completeMetric

def CompleteNormedSpaceClosed (X : CompleteNormedSpacePackage) : Prop :=
  X.normedSpace ∧ X.completeMetric

theorem complete_normed_space_closed_from_evidence (X : CompleteNormedSpacePackage)
    (E : CompleteNormedSpaceEvidence X) : CompleteNormedSpaceClosed X := by
  exact And.intro E.normedSpaceClosed E.completeMetricClosed

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse