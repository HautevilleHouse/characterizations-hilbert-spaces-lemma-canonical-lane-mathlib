import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.InnerProductPackage

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure OrthonormalBasisPackage (P : InnerProductPackage) where
  basisExists : Prop
  expansionUnique : Prop
  parsevalIdentity : Prop

def OrthonormalBasisClosed (P : InnerProductPackage) (O : OrthonormalBasisPackage P) : Prop :=
  O.basisExists ∧ O.expansionUnique ∧ O.parsevalIdentity

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse