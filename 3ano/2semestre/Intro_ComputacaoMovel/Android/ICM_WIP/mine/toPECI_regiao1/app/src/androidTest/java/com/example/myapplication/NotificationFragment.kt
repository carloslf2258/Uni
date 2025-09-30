package com.example.myapplication

import androidx.fragment.app.Fragment
import android.os.Bundle
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Info
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.myapplication.ui.theme.MyApplicationTheme
import kotlinx.coroutines.delay
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.compose.ui.platform.ComposeView
import androidx.appcompat.app.AppCompatActivity


class NotificationFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        return ComposeView(requireContext()).apply {
            setContent {
                MyApplicationTheme {
                    Surface(modifier = Modifier.fillMaxSize()) {
                        NotificationScreen()
                    }
                }
            }
        }
    }
}

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Carregar o Fragment dentro da Activity
        supportFragmentManager.beginTransaction()
            .replace(android.R.id.content, NotificationFragment())
            .commit()
    }
}

enum class Categoria {
    MESSAGE, WARNING, CALL, VEHICLE_HEALTH_STATE, ROAD_STATE, VEHICLE_WORKING_STATE, WEATHER_STATE
}

class Notification(
    private val category: Categoria? = null,
    private val priority: Int = 10,
    private val description: String? = null,
    private val info: Map<String, Any>? = null,
    val duration: Long = 60000) {

    init { println("Notification created with priority: $priority") }

    // Getters for each property
    fun getCategory(): Categoria? = category
    fun getPriority(): Int = priority
    fun getDescription(): String? = description
    fun getInfo(): Map<String, Any>? = info

    fun printInfo() {
        info?.forEach {
                (key, value) -> println("$key: $value")
        } ?: println("No additional info available.")
    }
}


@Composable
fun NotificationCard(notification: Notification,
                     onDismiss: () -> Unit,
                     modifier: Modifier = Modifier) {
    //Escolher cor da notificação
    val backgroundColor = when (notification.getCategory()) {
        Categoria.MESSAGE -> MaterialTheme.colorScheme.primary
        Categoria.WARNING -> MaterialTheme.colorScheme.error
        Categoria.CALL -> MaterialTheme.colorScheme.secondary
        Categoria.VEHICLE_HEALTH_STATE -> MaterialTheme.colorScheme.tertiary
        Categoria.ROAD_STATE -> MaterialTheme.colorScheme.surfaceVariant
        Categoria.VEHICLE_WORKING_STATE -> MaterialTheme.colorScheme.inverseSurface
        Categoria.WEATHER_STATE -> MaterialTheme.colorScheme.onPrimary
        else -> MaterialTheme.colorScheme.surface
    }

    Surface(
        shape = MaterialTheme.shapes.medium,
        shadowElevation = 2.dp,
        color = backgroundColor,

        modifier = Modifier
            .widthIn(min = 250.dp, max = 400.dp)  // Mínimo 250dp, máximo 400dp
            .heightIn(min = 80.dp, max = 150.dp)  // Mínimo 80dp, máximo 150dp
            .padding(8.dp)
    ) {
        Row(
            modifier = Modifier
                .padding(16.dp)
        ) {
            Icon(
                imageVector = Icons.Default.Info,
                contentDescription = "Notificação",
                tint = MaterialTheme.colorScheme.onSurface,
                modifier = Modifier.size(40.dp)
            )
            //Espaço entre Icon e texto à direita
            Spacer(modifier = Modifier.width(8.dp))

            //Exemplo: WARNING
            //         alerta0
            Column {
                Text(
                    text = notification.getCategory()?.name ?: "Sem Categoria",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = notification.getDescription() ?: "Sem descrição",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }

    LaunchedEffect(notification) {
        delay(notification.duration)
        // Aqui podes implementar lógica para remover a notificação
        onDismiss()
    }
}


@Composable
fun NotificationScreen() {
    val notifications = remember { mutableStateListOf<Notification>() }

    // Simular adição de notificações
    LaunchedEffect(Unit) {
        repeat(5) {
            delay(it * 2000L)
            notifications.add(
                Notification(
                    category = Categoria.values().random(),
                    priority = 5,
                    description = "Alerta $it",
                    info = mapOf("Detalhe" to "Info $it"),
                    duration = 6000L // Para testes, um tempo curto (6 seg)
                )
            )
        }
    }

    Column(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        notifications.forEach { notification ->
            NotificationCard(
                notification,
                onDismiss = { notifications.remove(notification) },
                modifier = Modifier.align(Alignment.CenterHorizontally) // Centraliza
            )
        }
    }

}


//@Preview(name = "Light Mode")
//@Preview(uiMode = Configuration.UI_MODE_NIGHT_YES, showBackground = true, name = "Dark Mode")
@Preview
@Composable
fun PreviewNotificationScreen() {
    MyApplicationTheme {
        Surface {
            NotificationScreen()
        }
    }
}