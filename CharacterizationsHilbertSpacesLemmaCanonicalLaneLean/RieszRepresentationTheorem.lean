import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure RieszRepresentationPackage (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] [CompleteOrthonormalBasisPackage V] where
  boundedLinearFunctional : (V → ℝ) → Prop
  existsUniqueRepresentingVector : Prop
  isometryBetweenVAndDual : Prop
  rieszMapDefined : Prop

structure RieszRepresentationEvidence (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] [CompleteOrthonormalBasisPackage V] (R : RieszRepresentationPackage V) where
  boundedLinearFunctionalClosed : R.boundedLinearFunctional
  existsUniqueRepresentingVectorClosed : R.existsUniqueRepresentingVector
  isometryBetweenVAndDualClosed : R.isometryBetweenVAndDual
  rieszMapDefinedClosed : R.rieszMapDefined

def RieszRepresentationClosed (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] [CompleteOrthonormalBasisPackage V] (R : RieszRepresentationPackage V) : Prop :=
  R.boundedLinearFunctional ∧ R.existsUniqueRepresentingVector ∧ R.isometryBetweenVAndDual ∧ R.rieszMapDefined

theorem riesz_representation_closed_from_evidence (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] [CompleteOrthonormalBasisPackage V] (R : RieszRepresentationPackage V) (E : RieszRepresentationEvidence V R) : RieszRepresentationClosed V R := by
  exact And.intro E.boundedLinearFunctionalClosed (And.intro E.existsUniqueRepresentingVectorClosed (And.intro E.isometryBetweenVAndDualClosed E.rieszMapDefinedClosed))

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse