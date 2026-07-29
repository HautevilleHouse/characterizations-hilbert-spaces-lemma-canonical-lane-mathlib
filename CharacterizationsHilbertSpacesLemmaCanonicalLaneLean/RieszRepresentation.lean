import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure RieszRepresentationPackage where
  hilbert : HilbertSpacePackage
  dualSpace : Type u
  rieszMap : hilbert.carrier → dualSpace
  isIsometricIsomorphism : Prop
  isSurjective : Prop
  isometricAxiom : isIsometricIsomorphism
  surjectiveAxiom : isSurjective

structure RieszRepresentationEvidence (R : RieszRepresentationPackage) where
  isometricClosed : R.isIsometricIsomorphism
  surjectiveClosed : R.isSurjective

def RieszRepresentationClosed (R : RieszRepresentationPackage) : Prop :=
  R.isIsometricIsomorphism ∧ R.isSurjective

theorem riesz_representation_closed_from_evidence (R : RieszRepresentationPackage)
    (E : RieszRepresentationEvidence R) : RieszRepresentationClosed R := by
  exact And.intro E.isometricClosed E.surjectiveClosed

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse