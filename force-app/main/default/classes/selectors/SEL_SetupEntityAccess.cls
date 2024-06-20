/**
 * SEL_SetupEntityAccess
 *
 * @author Tom Jaspers (tom.jaspers@brightfox.nl)
 *
 * @date 20/06/2024
 */
public with sharing class SEL_SetupEntityAccess {

    /**
     * Return a new Singleton
     *
     * @return SEL_SetupEntityAccess instance
     */
    public static SEL_SetupEntityAccess newInstance() {
        return (SEL_SetupEntityAccess) Application.newInstance(SEL_SetupEntityAccess.class.getName());
    }


    /**
     * Return Setup Entity Access by Parent name and Setup Entity Types
     *
     * @param parentNames           Set of parent names
     * @param setupEntityTypes      Set of setup entity types
     *
     * @return List of Setup Entity Accesses
     */
    public List<SetupEntityAccess> getSetupEntityAccessesByParentNamesAndSetupEntityTypes(Set<String> parentNames, Set<String> setupEntityTypes) {
        return [
                SELECT Id, Parent.Name, SetupEntityId, SetupEntityType
                FROM SetupEntityAccess
                WHERE Parent.Name IN :parentNames
                AND SetupEntityType IN :setupEntityTypes
        ];
    }
}