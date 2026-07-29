import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationsHilbertSpacesLemmaCanonicalLaneLean.ParallelogramLaw
import HautevilleHouse.CharacterizationsHilbertSpacesLemmaCanonicalLaneLean.InnerProductSpace

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure JordanVonNeumann where
  normedGroup : Type u
  [seminormedAddCommGroup : SeminormedAddCommGroup normedGroup]
  normSq : normedGroup → ℝ
  parallelogramLaw : ParallelogramLaw
  innerProductInduced : InnerProductSpace
  equivalence : ∀ x : normedGroup, InnerProductSpace.inner innerProductInduced x x = normSq x

structure JordanVonNeumannEvidence (J : JordanVonNeumann) where
  equivalenceClosed : ∀ x : J.normedGroup, InnerProductSpace.inner J.innerProductInduced x x = J.normSq x
  parallelogramLawClosed : ParallelogramLawClosed J.parallelogramLaw

def JordanVonNeumannClosed (J : JordanVonNeumann) : Prop :=
  (∀ x : J.normedGroup, InnerProductSpace.inner J.innerProductInduced x x = J.normSq x) ∧
  ParallelogramLawClosed J.parallelogramLaw

theorem jordan_von_neumann_closed_from_evidence (J : JordanVonNeumann) (E : JordanVonNeumannEvidence J) : JordanVonNeumannClosed J :=
  And.intro E.equivalenceClosed E.parallelogramLawClosed

theorem jordan_von_neumann_characterization (J : JordanVonNeumann) :
  JordanVonNeumannClosed J → (∃ (V : InnerProductSpace), InnerProductSpaceClosed V) :=
by
  intro h
  exact ⟨J.innerProductInduced, And.intro (fun x => ?_) (And.intro (fun x y z a b => ?_) (fun x y => ?_))⟩
  sorry

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse
