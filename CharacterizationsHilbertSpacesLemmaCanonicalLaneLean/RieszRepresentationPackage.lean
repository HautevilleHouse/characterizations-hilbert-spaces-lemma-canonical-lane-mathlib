import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.InnerProductPackage

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure RieszRepresentationPackage (P : InnerProductPackage) where
  functionalRepresentable : Prop
  normPreserved : Prop
  bijContinuity : Prop

def RieszClosed (P : InnerProductPackage) (R : RieszRepresentationPackage P) : Prop :=
  R.functionalRepresentable ∧ R.normPreserved ∧ R.bijContinuity

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse