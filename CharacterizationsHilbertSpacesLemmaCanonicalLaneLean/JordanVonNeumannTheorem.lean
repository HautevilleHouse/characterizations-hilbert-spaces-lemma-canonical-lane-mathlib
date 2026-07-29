import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure JordanVonNeumannPackage (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] where
  parallelogramLawCondition : Prop
  existenceOfInnerProduct : Prop
  completenessCondition : Prop
  hilbertSpaceCharacterization : Prop

structure JordanVonNeumannEvidence (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] (J : JordanVonNeumannPackage V) where
  parallelogramLawConditionClosed : J.parallelogramLawCondition
  existenceOfInnerProductClosed : J.existenceOfInnerProduct
  completenessConditionClosed : J.completenessCondition
  hilbertSpaceCharacterizationClosed : J.hilbertSpaceCharacterization

def JordanVonNeumannClosed (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] (J : JordanVonNeumannPackage V) : Prop :=
  J.parallelogramLawCondition ∧ J.existenceOfInnerProduct ∧ J.completenessCondition ∧ J.hilbertSpaceCharacterization

theorem jordan_von_neumann_closed_from_evidence (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] (J : JordanVonNeumannPackage V) (E : JordanVonNeumannEvidence V J) : JordanVonNeumannClosed V J := by
  exact And.intro E.parallelogramLawConditionClosed (And.intro E.existenceOfInnerProductClosed (And.intro E.completenessConditionClosed E.hilbertSpaceCharacterizationClosed))

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse