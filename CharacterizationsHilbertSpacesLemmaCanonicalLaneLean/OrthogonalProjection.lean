import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationsHilbertSpacesLemmaCanonicalLaneLean.InnerProductSpace

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure OrthogonalProjection where
  V : Type u
  inner : V → V → ℝ
  isInnerProduct : InnerProductSpace
  subspace : Set V
  proj : V → V
  projIdempotent : ∀ x, proj (proj x) = proj x
  projLinear : ∀ x y a b, proj (a • x + b • y) = a • proj x + b • proj y
  projSelfAdjoint : ∀ x y, inner (proj x) y = inner x (proj y)
  projRangeSubspace : ∀ x, proj x ∈ subspace
  projFixpoint : ∀ x ∈ subspace, proj x = x

structure OrthogonalProjectionEvidence (P : OrthogonalProjection) where
  projIdempotentClosed : ∀ x, P.proj (P.proj x) = P.proj x
  projLinearClosed : ∀ x y a b, P.proj (a • x + b • y) = a • P.proj x + b • P.proj y
  projSelfAdjointClosed : ∀ x y, P.inner (P.proj x) y = P.inner x (P.proj y)
  projRangeSubspaceClosed : ∀ x, P.proj x ∈ P.subspace
  projFixpointClosed : ∀ x, x ∈ P.subspace → P.proj x = x

def OrthogonalProjectionClosed (P : OrthogonalProjection) : Prop :=
  (∀ x, P.proj (P.proj x) = P.proj x) ∧
  (∀ x y a b, P.proj (a • x + b • y) = a • P.proj x + b • P.proj y) ∧
  (∀ x y, P.inner (P.proj x) y = P.inner x (P.proj y)) ∧
  (∀ x, P.proj x ∈ P.subspace) ∧
  (∀ x, x ∈ P.subspace → P.proj x = x)

theorem orthogonal_projection_closed_from_evidence (P : OrthogonalProjection) (E : OrthogonalProjectionEvidence P) : OrthogonalProjectionClosed P :=
  And.intro E.projIdempotentClosed (And.intro E.projLinearClosed (And.intro E.projSelfAdjointClosed (And.intro E.projRangeSubspaceClosed E.projFixpointClosed)))

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse
