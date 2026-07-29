import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure CompleteOrthonormalBasisPackage (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] where
  orthonormalSetExists : Prop
  maximalOrthonormalSet : Prop
  linearSpanDense : Prop
  parsevalIdentityHolds : Prop
  basisRepresentation : Prop

structure CompleteOrthonormalBasisEvidence (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] (C : CompleteOrthonormalBasisPackage V) where
  orthonormalSetExistsClosed : C.orthonormalSetExists
  maximalOrthonormalSetClosed : C.maximalOrthonormalSet
  linearSpanDenseClosed : C.linearSpanDense
  parsevalIdentityHoldsClosed : C.parsevalIdentityHolds
  basisRepresentationClosed : C.basisRepresentation

def CompleteOrthonormalBasisClosed (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] (C : CompleteOrthonormalBasisPackage V) : Prop :=
  C.orthonormalSetExists ∧ C.maximalOrthonormalSet ∧ C.linearSpanDense ∧ C.parsevalIdentityHolds ∧ C.basisRepresentation

theorem complete_orthonormal_basis_closed_from_evidence (V : Type*) [NormedAddCommGroup V] [InnerProductSpacePackage V] (C : CompleteOrthonormalBasisPackage V) (E : CompleteOrthonormalBasisEvidence V C) : CompleteOrthonormalBasisClosed V C := by
  exact And.intro E.orthonormalSetExistsClosed (And.intro E.maximalOrthonormalSetClosed (And.intro E.linearSpanDenseClosed (And.intro E.parsevalIdentityHoldsClosed E.basisRepresentationClosed)))

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse