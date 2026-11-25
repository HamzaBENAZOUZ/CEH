// ============================================================
//  Configuration Supabase : MÊME base que le site CISSP
//  (les questions CEH sont les chapitres 601-614, 701-702 et 791).
//  La clé "publishable" est faite pour être publique : la sécurité
//  repose sur les règles RLS de supabase/schema.sql.
//
//  Laissez vide pour le MODE LOCAL (test sur votre PC) : le site lit
//  alors private/ceh_guide.json + private/ceh_practice.json.
// ============================================================
window.CEH_CONFIG = {
  SUPABASE_URL: "https://dywhikydfvpnxytawoty.supabase.co",
  SUPABASE_ANON_KEY: "sb_publishable_7ndfC8AsN4nVVEnWiKv5rQ_cis5sS8I",
  PASS_MARK: 70,            // % pour considérer un quiz "réussi"
  LOCAL_DATA: "private/ceh_guide.json"
};
