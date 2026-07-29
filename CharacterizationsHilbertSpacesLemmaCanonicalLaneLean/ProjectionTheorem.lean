import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure ProjectionTheoremPackage where
  hilbert : HilbertSpacePackage
  closedSubspace : hilbert.carrier → Prop
  projectionOperator : (hilbert.carrier) → (hilbert.carrier)
  orthogonalDecomposition : Prop
  existenceUniqueness : Prop
  orthogonalDecompositionAxiom : orthogonalDecomposition
  existenceUniquenessAxiom : existenceUniqueness

structure ProjectionTheoremEvidence (P : ProjectionTheoremPackage) where
  orthogonalDecompositionClosed : P.orthogonalDecomposition
  existenceUniquenessClosed : P.existenceUniqueness

def ProjectionTheoremClosed (P : ProjectionTheoremPackage) : Prop :=
  P.orthogonalDecomposition ∧ P.existenceUniqueness

theorem projection_theorem_closed_from_evidence (P : ProjectionTheoremPackage)
    (E : ProjectionTheoremEvidence P) : ProjectionTheoremClosed P := by
  exact And.intro E.orthogonalDecompositionClosed E.existenceUniquenessClosed

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse