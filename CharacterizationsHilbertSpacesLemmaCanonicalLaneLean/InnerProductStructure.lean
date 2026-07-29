import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure InnerProductSpacePackage (V : Type*) [AddCommGroup V] [Module ℝ V] where
  innerProductDefined : Prop
  positiveDefinite : Prop
  linearInFirst : Prop
  conjugateSymmetric : Prop
  innerProductInducesNorm : Prop

structure InnerProductEvidence (V : Type*) [AddCommGroup V] [Module ℝ V] (I : InnerProductSpacePackage V) where
  innerProductDefinedClosed : I.innerProductDefined
  positiveDefiniteClosed : I.positiveDefinite
  linearInFirstClosed : I.linearInFirst
  conjugateSymmetricClosed : I.conjugateSymmetric
  innerProductInducesNormClosed : I.innerProductInducesNorm

def InnerProductSpaceClosed (V : Type*) [AddCommGroup V] [Module ℝ V] (I : InnerProductSpacePackage V) : Prop :=
  I.innerProductDefined ∧ I.positiveDefinite ∧ I.linearInFirst ∧ I.conjugateSymmetric ∧ I.innerProductInducesNorm

theorem inner_product_closed_from_evidence (V : Type*) [AddCommGroup V] [Module ℝ V] (I : InnerProductSpacePackage V) (E : InnerProductEvidence V I) : InnerProductSpaceClosed V I := by
  exact And.intro E.innerProductDefinedClosed (And.intro E.positiveDefiniteClosed (And.intro E.linearInFirstClosed (And.intro E.conjugateSymmetricClosed E.innerProductInducesNormClosed)))

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse