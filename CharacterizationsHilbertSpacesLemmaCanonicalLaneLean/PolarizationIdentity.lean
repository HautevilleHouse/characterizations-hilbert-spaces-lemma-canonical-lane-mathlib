import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationsHilbertSpacesLemmaCanonicalLaneLean.InnerProductSpace

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesLemmaCanonicalLaneLean

structure PolarizationIdentity where
  inner : (α : Type u) → [SeminormedAddCommGroup α] → α → α → ℝ
  normSq : (α : Type u) → [SeminormedAddCommGroup α] → α → ℝ
  identityHolds : ∀ (α : Type u) [SeminormedAddCommGroup α] (x y : α), 4 * inner x y = normSq (x + y) - normSq (x - y) + I * normSq (x + I • y) - I * normSq (x - I • y)

structure PolarizationIdentityEvidence (P : PolarizationIdentity) where
  identityHoldsClosed : ∀ (α : Type u) [SeminormedAddCommGroup α] (x y : α), 4 * P.inner x y = P.normSq (x + y) - P.normSq (x - y) + I * P.normSq (x + I • y) - I * P.normSq (x - I • y)

def PolarizationIdentityClosed (P : PolarizationIdentity) : Prop :=
  ∀ (α : Type u) [SeminormedAddCommGroup α] (x y : α), 4 * P.inner x y = P.normSq (x + y) - P.normSq (x - y) + I * P.normSq (x + I • y) - I * P.normSq (x - I • y)

theorem polarization_identity_closed_from_evidence (P : PolarizationIdentity) (E : PolarizationIdentityEvidence P) : PolarizationIdentityClosed P :=
  E.identityHoldsClosed

end CharacterizationsHilbertSpacesLemmaCanonicalLaneLean
end HautevilleHouse
