/**
 * CTRL_PresenceStatusSelector
 *
 * @author Tom Jaspers (tom.jaspers@brightfox.nl)
 *
 * @date 20/06/2024
 */
public with sharing class CTRL_PresenceStatusSelector {

    @AuraEnabled(Cacheable=true)
    public void getPresenceStatuses() {
        Set<String> parentNames = new Set<String>();
        Set<String> setupEntityTypes = new Set<String>();
        List<SetupEntityAccess> setupEntityAccesses = SEL_SetupEntityAccess.newInstance()
                                                                           .getSetupEntityAccessesByParentNamesAndSetupEntityTypes(parentNames, setupEntityTypes);
    }
}