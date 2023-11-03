library;

use core::ops::Eq;

/// Represents the current state of the campaign.
pub enum CampaignState {
    /// The campaign has been cancelled.
    Cancelled: (),
    /// The campain was successful
    Sucessful: (),
    /// The campaign is still accepting funds.
    Progress: (),
}

impl Eq for CampaignState {
    fn eq(self, other: CampaignState) -> bool {
        match (self, other) {
            (CampaignState::Cancelled, CampaignState::Cancelled) => true,
            (CampaignState::Sucessful, CampaignState::Sucessful) => true,
            (CampaignState::Progress, CampaignState::Progress) => true,
            _ => false,
        }
    }
}